.class public abstract Lcom/diotek/ime/framework/input/AbstractInputController;
.super Ljava/lang/Object;
.source "AbstractInputController.java"

# interfaces
.implements Lcom/diotek/ime/framework/input/InputController;


# instance fields
.field private final QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

.field private availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private installableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccentCharKey:I

.field private mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

.field private mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

.field protected mBidiFormatter:Landroid/text/BidiFormatter;

.field protected mChineseCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

.field protected mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field protected mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

.field protected mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

.field private mIsAccentCombinationMode:Z

.field private mIsAcuteAccentPressed:Z

.field private mIsAcuteAccentSplit:Z

.field private mIsAcuteAccentState:Z

.field private mIsHwKeyboardCtrlRightPressed:Z

.field protected mIsKorMode:Z

.field protected mIsSwiftKeyMode:Z

.field protected mIsTabletMode:Z

.field private mLastKeyTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field protected mPreviousTextLength:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

.field private mTapCount:I

.field protected mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 66
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 67
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 68
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 69
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 70
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 71
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    .line 72
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 73
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 74
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 76
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    .line 78
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 81
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    .line 82
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    .line 83
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    .line 85
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    .line 87
    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    .line 88
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    .line 90
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    .line 91
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    .line 92
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    .line 95
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 97
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    .line 103
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    .line 107
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    .line 1298
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    .line 1299
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    .line 1300
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    .line 115
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 116
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 117
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 118
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    .line 119
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 120
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->newInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 121
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setVibrateController(Lcom/diotek/ime/framework/effect/VibrateController;)V

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setSoundEffectController(Lcom/diotek/ime/framework/effect/SoundEffectController;)V

    .line 123
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 124
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 125
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 126
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    .line 127
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    .line 129
    new-instance v0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;-><init>(Lcom/diotek/ime/framework/common/InputManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    .line 131
    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;->getInstance()Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    .line 132
    return-void

    .line 109
    :array_0
    .array-data 4
        0x29
        0x2d
        0x40
        0x23
        0x2f
        0x25
        0x5e
        0x26
        0x2a
        0x28
    .end array-data
.end method

.method private filteringLanguageID(I)I
    .locals 1
    .param p1, "langID"    # I

    .prologue
    .line 1928
    move v0, p1

    .line 1929
    .local v0, "filteredLanguageID":I
    sparse-switch p1, :sswitch_data_0

    .line 1956
    move v0, p1

    .line 1959
    :goto_0
    return v0

    .line 1935
    :sswitch_0
    const/high16 v0, 0x656e0000

    .line 1936
    goto :goto_0

    .line 1940
    :sswitch_1
    const/high16 v0, 0x66720000

    .line 1941
    goto :goto_0

    .line 1945
    :sswitch_2
    const/high16 v0, 0x65730000

    .line 1946
    goto :goto_0

    .line 1950
    :sswitch_3
    const/high16 v0, 0x70740000

    .line 1951
    goto :goto_0

    .line 1953
    :sswitch_4
    const/high16 v0, 0x68650000

    .line 1954
    goto :goto_0

    .line 1929
    nop

    :sswitch_data_0
    .sparse-switch
        0x656e0000 -> :sswitch_0
        0x656e4742 -> :sswitch_0
        0x656e5553 -> :sswitch_0
        0x65730000 -> :sswitch_2
        0x65734553 -> :sswitch_2
        0x65735553 -> :sswitch_2
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x69640000 -> :sswitch_0
        0x69770000 -> :sswitch_4
        0x6d730000 -> :sswitch_0
        0x70740000 -> :sswitch_3
        0x70744252 -> :sswitch_3
        0x70745054 -> :sswitch_3
    .end sparse-switch
.end method

.method private isNoUpperCaseCharacter(II)Z
    .locals 6
    .param p1, "inputLanguage"    # I
    .param p2, "charCode"    # I

    .prologue
    const/16 v5, 0xe8

    const/16 v4, 0xe0

    const/16 v3, 0xe9

    const/4 v1, 0x1

    .line 1588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "localeCountyCode":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1626
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 1593
    :sswitch_0
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1594
    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    .line 1597
    :cond_2
    const/16 v2, 0xb5

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 1602
    :sswitch_1
    if-eq p2, v3, :cond_1

    const/16 v2, 0xe7

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 1607
    :sswitch_2
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1608
    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    .line 1612
    :cond_3
    const/16 v2, 0x3bc

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 1618
    :sswitch_3
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1589
    :sswitch_data_0
    .sparse-switch
        0x64650000 -> :sswitch_2
        0x66720000 -> :sswitch_0
        0x66724341 -> :sswitch_0
        0x66724652 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x74720000 -> :sswitch_3
    .end sparse-switch
.end method

.method private onHwPhonepadKeyInputProcess(I)Z
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1309
    const/4 v5, 0x7

    if-lt p1, v5, :cond_4

    const/16 v5, 0x10

    if-gt p1, v5, :cond_4

    .line 1310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1311
    .local v0, "eventTime":J
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    .line 1313
    .local v2, "keyCodes":[I
    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    .line 1314
    iget-wide v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    const-wide/16 v7, 0x5dc

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    if-ne p1, v5, :cond_2

    .line 1316
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    .line 1321
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    .line 1324
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    array-length v6, v2

    if-lt v5, v6, :cond_0

    .line 1325
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    .line 1328
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v2

    if-le v5, v3, :cond_1

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1330
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    .line 1331
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v4, v2, v4

    invoke-interface {v5, v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 1353
    .end local v0    # "eventTime":J
    .end local v2    # "keyCodes":[I
    :goto_1
    return v3

    .line 1318
    .restart local v0    # "eventTime":J
    .restart local v2    # "keyCodes":[I
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_0

    .line 1333
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    .line 1334
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    aget v5, v2, v5

    invoke-interface {v4, v5, v2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    .line 1339
    .end local v0    # "eventTime":J
    .end local v2    # "keyCodes":[I
    :cond_4
    const/16 v5, 0x12

    if-ne p1, v5, :cond_5

    .line 1340
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    .line 1341
    .restart local v2    # "keyCodes":[I
    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    .line 1342
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    .line 1343
    aget v4, v2, v4

    invoke-virtual {p0, v4, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1344
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_1

    .line 1348
    .end local v2    # "keyCodes":[I
    :cond_5
    const/16 v5, 0x17

    if-ne p1, v5, :cond_6

    .line 1349
    new-array v5, v3, [I

    aput v6, v5, v4

    invoke-virtual {p0, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto :goto_1

    :cond_6
    move v3, v4

    .line 1353
    goto :goto_1
.end method

.method private onHwPhonepadNumberInputProcess(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x1

    .line 1357
    const/4 v3, 0x7

    if-lt p1, v3, :cond_2

    const/16 v3, 0x10

    if-gt p1, v3, :cond_2

    .line 1358
    add-int/lit8 v3, p1, -0x7

    add-int/lit8 p1, v3, 0x30

    .line 1360
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1361
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1362
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v3, :cond_0

    .line 1363
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 1366
    :cond_0
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1367
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1371
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onHwPhonepadSymbolInputProcess(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/16 v9, 0x12

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x7

    const/4 v3, 0x1

    .line 1375
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    .line 1376
    .local v0, "phoneNumberEditor":Z
    add-int/lit8 v1, p1, -0x8

    .line 1377
    .local v1, "symbolIndex":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 1378
    .local v2, "symbolPage":I
    if-eqz v0, :cond_8

    .line 1379
    if-lt p1, v7, :cond_0

    if-le p1, v8, :cond_1

    :cond_0
    if-ne p1, v9, :cond_2

    .line 1381
    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 1382
    const-string v5, ","

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    .line 1402
    :cond_2
    :goto_0
    const/16 v5, 0x15

    if-ne p1, v5, :cond_9

    .line 1403
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->prevSymbolsPage()V

    .line 1409
    :goto_1
    return v3

    .line 1383
    :cond_3
    if-ne v1, v7, :cond_4

    .line 1384
    const-string v5, ";"

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1385
    :cond_4
    const/16 v5, 0x9

    if-ne v1, v5, :cond_5

    .line 1386
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    goto :goto_0

    .line 1387
    :cond_5
    if-ne p1, v7, :cond_6

    .line 1388
    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1389
    :cond_6
    if-ne p1, v9, :cond_7

    .line 1390
    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1392
    :cond_7
    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1396
    :cond_8
    const/16 v5, 0x8

    if-lt p1, v5, :cond_2

    if-gt p1, v8, :cond_2

    .line 1397
    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1405
    :cond_9
    const/16 v5, 0x16

    if-ne p1, v5, :cond_a

    .line 1406
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_1

    :cond_a
    move v3, v4

    .line 1409
    goto :goto_1
.end method

.method private onKeyDownContinue(ILandroid/view/KeyEvent;I)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "inputLanguage"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1190
    const/16 v0, -0xff

    .line 1191
    .local v0, "charCode":S
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    move v1, v4

    .line 1192
    .local v1, "isAltRightPressed":Z
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v2, v4

    .line 1193
    .local v2, "isaltpress":Z
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    invoke-virtual {v5, p1, v6, v2}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    .line 1194
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1196
    :cond_2
    new-array v5, v4, [I

    aput v0, v5, v3

    invoke-virtual {p0, v0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1197
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1202
    :goto_2
    return v4

    .end local v1    # "isAltRightPressed":Z
    .end local v2    # "isaltpress":Z
    :cond_3
    move v1, v3

    .line 1191
    goto :goto_0

    .restart local v1    # "isAltRightPressed":Z
    :cond_4
    move v2, v3

    .line 1192
    goto :goto_1

    .line 1199
    .restart local v2    # "isaltpress":Z
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1200
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2

    .line 1202
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2
.end method

.method private onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1207
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1208
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 1239
    :cond_1
    :goto_0
    :pswitch_0
    return v2

    .line 1214
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1215
    const/4 v4, 0x7

    if-lt p1, v4, :cond_3

    const/16 v4, 0x10

    if-le p1, v4, :cond_1

    .line 1219
    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_1
    move v2, v3

    .line 1239
    goto :goto_0

    .line 1227
    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v1

    .line 1228
    .local v1, "softFuncKeyCode":I
    const/16 v4, -0xa2

    if-eq v1, v4, :cond_1

    .line 1231
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v4, :cond_4

    .line 1232
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    goto :goto_1

    .line 1219
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onKeyUpHwPhonepad(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1243
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v3

    .line 1244
    .local v3, "softFuncKeyCode":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    .line 1246
    .local v2, "phoneNumberEditor":Z
    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    .line 1247
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1248
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1249
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v5, :cond_0

    .line 1250
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 1252
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v4

    .line 1253
    .local v4, "validSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    if-eqz v4, :cond_1

    .line 1254
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndex()I

    move-result v0

    .line 1256
    .local v0, "currentIndex":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1257
    if-nez v0, :cond_2

    .line 1258
    const/4 v0, 0x1

    .line 1266
    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    .end local v0    # "currentIndex":I
    .end local v4    # "validSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    :cond_1
    :goto_1
    move v5, v6

    .line 1293
    :goto_2
    return v5

    .line 1260
    .restart local v0    # "currentIndex":I
    .restart local v4    # "validSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1263
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v0, v5

    goto :goto_0

    .line 1269
    .end local v0    # "currentIndex":I
    .end local v4    # "validSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    .line 1270
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->showSoftFuncKbd()V

    goto :goto_1

    .line 1275
    :cond_5
    const/16 v5, 0x12

    if-ne p1, v5, :cond_7

    const/16 v5, -0xa2

    if-ne v3, v5, :cond_6

    if-nez v2, :cond_7

    .line 1277
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v1

    .line 1278
    .local v1, "keyCodes":[I
    if-eqz v1, :cond_7

    array-length v5, v1

    if-lez v5, :cond_7

    .line 1279
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    .line 1280
    aget v5, v1, v7

    invoke-virtual {p0, v5, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1281
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    move v5, v6

    .line 1283
    goto :goto_2

    .line 1287
    .end local v1    # "keyCodes":[I
    :cond_7
    packed-switch v3, :pswitch_data_0

    .line 1293
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadKeyInputProcess(I)Z

    move-result v5

    goto :goto_2

    .line 1289
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadNumberInputProcess(I)Z

    move-result v5

    goto :goto_2

    .line 1291
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadSymbolInputProcess(I)Z

    move-result v5

    goto :goto_2

    .line 1287
    :pswitch_data_0
    .packed-switch -0xa2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMultitapHwPhonepad()V
    .locals 2

    .prologue
    .line 1303
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    .line 1304
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    .line 1305
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    .line 1306
    return-void
.end method


# virtual methods
.method public VOHWRInitByCursorMove(I)V
    .locals 1
    .param p1, "cursor"    # I

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRInitByCursorMove(I)V

    .line 1510
    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 1
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRSetChangeMode(II)V

    .line 1515
    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 1
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRSetInsertMode(II)V

    .line 1520
    return-void
.end method

.method public backupFullText()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 450
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 451
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    goto :goto_0
.end method

.method public buildSuggestions()V
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->buildSuggestions()V

    .line 2070
    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->cancelPreviewTrace()V

    .line 1849
    :cond_0
    return-void
.end method

.method protected changeInputLanguageTo(I)V
    .locals 0
    .param p1, "languageCode"    # I

    .prologue
    .line 654
    return-void
.end method

.method public clearAction()V
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->clearAction()V

    .line 1754
    :cond_0
    return-void
.end method

.method public clearBackupFullText()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 458
    return-void
.end method

.method public closeInputModule()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->closing()V

    .line 629
    return-void
.end method

.method public commitAndResetForHwr()V
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    .line 1530
    return-void
.end method

.method protected final createInputEngineArray(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->createInputEngineArray(I)Z

    move-result v0

    return v0
.end method

.method protected final createInputModuleArray(I)Z
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 167
    if-gtz p1, :cond_1

    .line 168
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "SamsungIME"

    const-string v1, "Module array creating fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 174
    :cond_1
    new-array v0, p1, [Lcom/diotek/ime/framework/input/InputModule;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteAllTextInEditor()V
    .locals 3

    .prologue
    .line 2084
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2085
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2086
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2087
    const v1, 0x102001f

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2088
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2091
    :cond_0
    return-void
.end method

.method public finishAndInitByCursorMove()V
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->finishAndInitByCursorMove()V

    .line 1505
    return-void
.end method

.method public finishComposing(Z)V
    .locals 1
    .param p1, "resetComposing"    # Z

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 1740
    :cond_0
    return-void
.end method

.method public getAcuteAccentPressed()Z
    .locals 1

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    return v0
.end method

.method public getAcuteAccentSplitState()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    return v0
.end method

.method public getChineseSpellText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    const-string v0, ""

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getChineseWordCandidate(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getContextAwareUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 2017
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getCurrentInputEngineIndex(III)I
.end method

.method protected abstract getCurrentInputModuleIndex(III)I
.end method

.method protected abstract getDWPEngineIndex()I
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getDeleteCount()I

    move-result v0

    return v0
.end method

.method protected abstract getHWInputEngineIndex(I)I
.end method

.method protected abstract getHWInputModuleIndex(I)I
.end method

.method public getIndexOfInputBuffer()I
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getIndexOfInputBuffer()I

    move-result v0

    return v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getKeyPositionByTap(II)I

    move-result v0

    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "regions"    # [Landroid/graphics/Rect;

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getKeyPositions([Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getPosNextText()I
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getPosNextText()I

    move-result v0

    return v0
.end method

.method public getPreviousTextLength()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    return v0
.end method

.method public abstract getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;
.end method

.method public getStateCandidate()I
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getStateCandidate()I

    move-result v0

    .line 1967
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionActiveIndex()I
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v0

    return v0
.end method

.method public abstract getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;
.end method

.method protected abstract getVietValidVowelsString()Ljava/lang/String;
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
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
    .line 1805
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getWordToAddMyWordList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method protected handleIndianLangToggle()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 680
    return-void
.end method

.method protected handleIndianVowelRowState()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    .line 676
    return-void
.end method

.method protected handleShiftLong()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    .line 666
    .local v0, "isCapslock":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 667
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 668
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 669
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v2, -0xff

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 670
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 671
    return-void

    :cond_0
    move v1, v2

    .line 666
    goto :goto_0
.end method

.method public hasCurrentSequence()Z
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasKeyATInCurrentSequence()Z
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasKeyATInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasWWWdotInCurrentSequence()Z
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasWWWdotInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public initAndClearComposingText()V
    .locals 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    .line 1731
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1733
    :cond_0
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 2074
    .local p1, "defaultCandidateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->initCandidates(Ljava/util/ArrayList;)V

    .line 2075
    return-void
.end method

.method public initComposingText()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    .line 1747
    :cond_0
    return-void
.end method

.method public initDeleteCount()V
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initDeleteCount()V

    .line 1572
    return-void
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 1
    .param p1, "HWRKeyboard"    # Landroid/widget/FrameLayout;
    .param p2, "cursor"    # I

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    .line 1545
    return-void
.end method

.method protected abstract initInputEngine()V
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->initInputEngineAndComposing(IIII)V

    .line 1525
    return-void
.end method

.method protected abstract initInputModule()V
.end method

.method public final initialize()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initInputModule()V

    .line 137
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initInputEngine()V

    .line 139
    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getInstance()Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    .line 140
    invoke-static {}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->getInstance()Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    .line 141
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 142
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method public isAcuteAccentState()Z
    .locals 2

    .prologue
    .line 1640
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public isAvailableLanguage(I)Z
    .locals 3
    .param p1, "langID"    # I

    .prologue
    .line 1883
    const/4 v0, 0x0

    .line 1885
    .local v0, "isContainHWRDB":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1886
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    :cond_0
    const/4 v1, 0x0

    .line 1896
    :goto_0
    return v1

    .line 1889
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 1896
    goto :goto_0

    .line 1891
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1892
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1894
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method protected abstract isFunctionKey(I)Z
.end method

.method public isHWRAvailable()Z
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    :cond_0
    const/4 v0, 0x0

    .line 1872
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isIgnoreKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 632
    sparse-switch p1, :sswitch_data_0

    .line 640
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 638
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        -0x103 -> :sswitch_0
        -0x101 -> :sswitch_0
        -0x100 -> :sswitch_0
        -0xff -> :sswitch_0
        -0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isInstallableLanguage(I)Z
    .locals 3
    .param p1, "langID"    # I

    .prologue
    .line 1901
    const/4 v0, 0x0

    .line 1902
    .local v0, "isContainHWRDB":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1903
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    :cond_0
    const/4 v1, 0x0

    .line 1914
    :goto_0
    return v1

    .line 1906
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 1914
    goto :goto_0

    .line 1908
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1909
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1911
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isMultiTapRnunnig()Z

    move-result v0

    .line 1762
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProdictionWord()Z
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isPredictionWord()Z

    move-result v0

    .line 1786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedLanguage(Lcom/diotek/ime/framework/common/Language;)Z
    .locals 5
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v4, 0x0

    .line 1439
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1440
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isSwiftPhonepadInput()Z

    move-result v0

    return v0
.end method

.method public isUsingDWPEngine()Z
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getDWPEngineIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVietValidVowels(I)Ljava/lang/Boolean;
    .locals 6
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 481
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 482
    .local v0, "iConn":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getVietValidVowelsString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "vietValidVowels":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 484
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    .local v1, "preChar":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 486
    const-string v1, ""

    .line 488
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 492
    .end local v1    # "preChar":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public learnSequence()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1821
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->learnSequence(Ljava/lang/String;)V

    .line 1824
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1826
    :cond_1
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->learnTempSuggestion(Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method public onChangeHwkeyboardLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 1
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V

    .line 1584
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V

    .line 1585
    return-void
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 2
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    .line 1445
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onChangeHwkeyboardLanguage(Lcom/diotek/ime/framework/common/Language;)V

    .line 1446
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 1448
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    .line 1452
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 1454
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->clearTypoList()V

    .line 1455
    return-void
.end method

.method public onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "charCode"    # S
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1660
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 1661
    .local v4, "inputLanguage":I
    const/16 v6, -0xff

    if-eq p1, v6, :cond_b

    .line 1662
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1664
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v6}, Lcom/diotek/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    .line 1665
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 1666
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x6b6f0000

    if-eq v4, v6, :cond_0

    .line 1667
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onLongPressHwKey(I)Z

    move-result v5

    .line 1668
    .local v5, "ret":Z
    if-eqz v5, :cond_0

    .line 1669
    const/4 v6, 0x1

    .line 1724
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "ret":Z
    :goto_0
    return v6

    .line 1673
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 1674
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1675
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->isAccentCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1676
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 1677
    const/high16 v6, 0x69730000

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-ne v6, v7, :cond_1

    .line 1678
    const/4 v6, 0x1

    goto :goto_0

    .line 1682
    :cond_1
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    if-eq v6, p1, :cond_4

    .line 1683
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    invoke-virtual {v6, v7, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->getCombinedCharacter(II)I

    move-result v6

    int-to-short v1, v6

    .line 1686
    .local v1, "combinedChar":S
    const/16 v6, -0xff

    if-eq v1, v6, :cond_3

    if-eqz v3, :cond_3

    .line 1687
    const/high16 v6, 0x69730000

    if-eq v4, v6, :cond_2

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-eq v6, v7, :cond_2

    .line 1688
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1690
    :cond_2
    move p1, v1

    .line 1692
    :cond_3
    const/16 v6, -0xff

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 1694
    .end local v1    # "combinedChar":S
    :cond_4
    if-eqz v3, :cond_7

    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 1695
    .local v2, "et":Landroid/view/inputmethod/ExtractedText;
    :goto_1
    if-eqz v2, :cond_5

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 1696
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    .line 1699
    :cond_5
    const/high16 v6, 0x6b6f0000

    if-ne v4, v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1700
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKeyForHwKeyboard(I[I)V

    .line 1714
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v6, :cond_6

    .line 1715
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 1716
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1717
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1720
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1694
    .end local v2    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 1701
    .restart local v2    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1702
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto :goto_2

    .line 1704
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0, v4, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isNoUpperCaseCharacter(II)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1707
    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1711
    :goto_3
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1709
    :cond_a
    int-to-char v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1721
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1724
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 1
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->onHwrPanelLongPressed(ILjava/lang/String;)V

    .line 1460
    return-void
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 623
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchCancel(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 604
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchDown(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 610
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchMove(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 616
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchUp(IIJ)Z

    move-result v0

    return v0
.end method

.method public onKey(I[I)V
    .locals 16
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v4

    .line 291
    .local v4, "isAcuteAccentState":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_DEFAULT_TRACE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 292
    .local v7, "isTraceOn":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isEnableTrace()Z

    move-result v5

    .line 293
    .local v5, "isEnableTrace":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_0
    const/4 v6, 0x1

    .line 294
    .local v6, "isEnableTraceInput":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v11}, Lcom/diotek/ime/framework/input/InputModule;->cancelUpdateSequenceAndSuggestionDelayForRecapture()V

    .line 295
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isFunctionKey(I)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_b

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v11}, Lcom/diotek/ime/framework/input/InputModule;->release()V

    .line 301
    :cond_2
    const/16 v11, -0x3c

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x1f4

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x190

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x19a

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3e

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x66

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x142

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x143

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x141

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x7a

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x7c

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x7f

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x137

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3e8

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3e9

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3ea

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3ee

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x3ed

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x105

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x106

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x20

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x89

    move/from16 v0, p1

    if-eq v0, v11, :cond_8

    const/16 v11, -0x75

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v11

    const/16 v12, -0x89

    if-eq v11, v12, :cond_8

    .line 325
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v11}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    .line 337
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    .line 433
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v11

    if-eq v4, v11, :cond_21

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v12

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    .line 441
    :cond_6
    :goto_3
    return-void

    .line 293
    .end local v6    # "isEnableTraceInput":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 326
    .restart local v6    # "isEnableTraceInput":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 328
    :cond_9
    const/16 v11, -0x66

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    const/16 v11, -0x142

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    const/16 v11, -0x143

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    const/16 v11, -0x141

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    const/16 v11, -0x89

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    const/16 v11, -0x75

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v11

    const/16 v12, -0x89

    if-eq v11, v12, :cond_4

    .line 334
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v11}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    goto :goto_1

    .line 338
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isIgnoreKey(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 340
    const/16 v11, -0x101

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 342
    .local v9, "when":J
    const/4 v11, -0x5

    move/from16 v0, p1

    if-ne v0, v11, :cond_c

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    const-wide/16 v13, 0x12c

    add-long/2addr v11, v13

    cmp-long v11, v9, v11

    if-lez v11, :cond_d

    .line 344
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initDeleteCount()V

    .line 346
    :cond_d
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    .line 347
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 348
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v3, :cond_e

    iget v11, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v11, :cond_11

    iget v11, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v11, :cond_11

    const-string v11, "com.android.mms"

    iget-object v12, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 352
    :cond_e
    const/4 v11, -0x5

    move/from16 v0, p1

    if-ne v0, v11, :cond_10

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v12, 0x43

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 357
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto/16 :goto_2

    .line 354
    :cond_10
    const/16 v11, 0xa

    move/from16 v0, p1

    if-ne v0, v11, :cond_f

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v12, 0x42

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto :goto_4

    .line 360
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 361
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v11, :cond_5

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_2

    .line 371
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v9    # "when":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v11

    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_14

    :cond_13
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/diotek/ime/framework/common/InputManager;->isNumberMyanmar(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    add-int/lit8 v12, p1, -0x30

    aget v11, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    add-int/lit8 v15, p1, -0x30

    aget v14, v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_2

    .line 380
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;->getShortCutKey(I)I

    move-result v8

    .line 382
    .local v8, "tempCode":I
    const/4 v2, 0x0

    .line 384
    .local v2, "event":I
    const/16 v11, -0xff

    if-eq v8, v11, :cond_15

    .line 385
    move/from16 p1, v8

    .line 388
    :cond_15
    const/16 v11, 0x61

    move/from16 v0, p1

    if-lt v0, v11, :cond_16

    const/16 v11, 0x7a

    move/from16 v0, p1

    if-gt v0, v11, :cond_16

    .line 389
    add-int/lit8 v2, p1, -0x44

    .line 398
    :goto_5
    const/16 v11, 0x7000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->sendDownUpKeyEvent(II)V

    goto/16 :goto_3

    .line 390
    :cond_16
    const/16 v11, 0x30

    move/from16 v0, p1

    if-lt v0, v11, :cond_17

    const/16 v11, 0x39

    move/from16 v0, p1

    if-gt v0, v11, :cond_17

    .line 391
    add-int/lit8 v2, p1, -0x2a

    goto :goto_5

    .line 392
    :cond_17
    const/16 v11, 0xa

    move/from16 v0, p1

    if-ne v0, v11, :cond_18

    .line 393
    const/16 v2, 0x42

    goto :goto_5

    .line 395
    :cond_18
    move/from16 v2, p1

    goto :goto_5

    .line 402
    .end local v2    # "event":I
    .end local v8    # "tempCode":I
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 403
    .restart local v9    # "when":J
    const/4 v11, -0x5

    move/from16 v0, p1

    if-eq v0, v11, :cond_1a

    const/16 v11, -0x3eb

    move/from16 v0, p1

    if-ne v0, v11, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    const-wide/16 v13, 0x12c

    add-long/2addr v11, v13

    cmp-long v11, v9, v11

    if-lez v11, :cond_1c

    .line 405
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initDeleteCount()V

    .line 408
    :cond_1c
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 410
    .restart local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v3, :cond_1d

    iget v11, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v11, :cond_20

    iget v11, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v11, :cond_20

    const-string v11, "com.android.mms"

    iget-object v12, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 414
    :cond_1d
    const/4 v11, -0x5

    move/from16 v0, p1

    if-ne v0, v11, :cond_1f

    .line 415
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v12, 0x43

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 419
    :cond_1e
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto/16 :goto_2

    .line 416
    :cond_1f
    const/16 v11, 0xa

    move/from16 v0, p1

    if-ne v0, v11, :cond_1e

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v12, 0x42

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto :goto_6

    .line 422
    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 423
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v11, :cond_5

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_2

    .line 435
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v9    # "when":J
    :cond_21
    if-eqz v4, :cond_6

    const/16 v11, -0x190

    move/from16 v0, p1

    if-eq v0, v11, :cond_6

    const/16 v11, -0x19a

    move/from16 v0, p1

    if-eq v0, v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getAcuteAccentPressed()Z

    move-result v11

    if-nez v11, :cond_6

    .line 439
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "INPUT_LANGUAGE"

    const v14, 0x656e4742

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    .line 899
    .local v11, "inputLanguage":I
    const/16 v4, -0xff

    .line 901
    .local v4, "charCode":S
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwUmlautPopupShown()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 902
    const/4 v12, 0x0

    .line 1186
    :goto_0
    return v12

    .line 905
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    .line 908
    .local v10, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v6, 0x0

    .line 910
    .local v6, "editorClass":I
    if-eqz v10, :cond_1

    .line 911
    iget v12, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v12, 0xf

    .line 915
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    if-eqz v10, :cond_4

    const-string v12, "com.sec.android.app.popupcalculator"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "com.sec.android.app.videoplayer"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 919
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 922
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    const/4 v12, 0x3

    if-eq v6, v12, :cond_6

    const/4 v12, 0x2

    if-ne v6, v12, :cond_7

    :cond_6
    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ks02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 925
    const/4 v12, 0x0

    goto :goto_0

    .line 929
    :cond_7
    const/16 v12, 0x3c

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 930
    const-string v12, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x70740000

    if-eq v11, v12, :cond_8

    const v12, 0x70744252

    if-ne v11, v12, :cond_b

    .line 932
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->setClearRightShiftPressed()V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v7, 0x33

    .line 934
    .local v7, "fakeKey":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 935
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 933
    .end local v7    # "fakeKey":I
    :cond_9
    const/16 v7, 0x2d

    goto :goto_1

    .line 937
    .restart local v7    # "fakeKey":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v7, v13, v14}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v4

    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 942
    .end local v7    # "fakeKey":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 943
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    .line 944
    const/16 v12, 0x3c

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    const/16 v12, 0x3b

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 947
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 951
    :cond_c
    sparse-switch p1, :sswitch_data_0

    .line 1183
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    .line 953
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 954
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 955
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 956
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 958
    :cond_d
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    .line 1186
    :cond_e
    :goto_2
    :sswitch_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 963
    :sswitch_2
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 964
    const/4 v4, -0x5

    .line 965
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v4, v13, v14

    invoke-interface {v12, v4, v13}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_f

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 972
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 974
    :sswitch_3
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 976
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    .line 978
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    goto :goto_2

    .line 981
    :sswitch_4
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_10

    .line 983
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 986
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 990
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 992
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1003
    :sswitch_5
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1019
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/16 v13, 0x20

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 1020
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1024
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_17

    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 1028
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1029
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    .line 1031
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 1032
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1033
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_1a

    if-eqz v10, :cond_1e

    const-string v12, "com.android.browser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "com.sec.android.app.sbrowser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1036
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_1b

    .line 1041
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 1042
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v8, :cond_1d

    .line 1043
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_1c

    .line 1044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 1046
    :cond_1c
    const-string v12, " "

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1049
    :cond_1d
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v8    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1053
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    goto/16 :goto_2

    .line 1060
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_e

    .line 1061
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto/16 :goto_2

    .line 1066
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v12

    if-nez v12, :cond_1f

    .line 1067
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 1068
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 1072
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1074
    :cond_1f
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    goto :goto_3

    .line 1076
    :sswitch_8
    const/high16 v12, 0x6c740000

    if-ne v11, v12, :cond_e

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->toggleAltGrLt()V

    goto/16 :goto_2

    .line 1081
    :sswitch_9
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    .line 1084
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->SearchHanja()V

    goto/16 :goto_2

    .line 1089
    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_21

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_22

    .line 1090
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x5c

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1091
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1094
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1096
    :cond_24
    const/16 v12, -0x3ed

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ed

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1097
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1102
    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_25

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_26

    .line 1103
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x5d

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1104
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1107
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1109
    :cond_28
    const/16 v12, -0x3ee

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ee

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1110
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1115
    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_29

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_2a

    .line 1116
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x7a

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1117
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1120
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 1121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    .line 1122
    const/16 v12, -0x105

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x105

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1123
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1124
    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1125
    const/16 v12, -0x3e9

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3e9

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1126
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1129
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1130
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 1134
    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_2e

    .line 1135
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x7b

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1136
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1139
    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    .line 1141
    const/16 v12, -0x106

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x106

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1142
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1143
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 1144
    const/16 v12, -0x3ea

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ea

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    .line 1145
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1148
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1149
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 1162
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v12

    if-eqz v12, :cond_35

    .line 1164
    add-int/lit8 v9, p1, -0x8

    .line 1165
    .local v9, "idx":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaCandidate()Ljava/util/ArrayList;

    move-result-object v3

    .line 1166
    .local v3, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_32

    .line 1167
    :cond_31
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    .line 1169
    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v5

    .line 1170
    .local v5, "displayedCount":I
    if-nez v5, :cond_33

    .line 1171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    .line 1173
    :cond_33
    const/4 v12, -0x1

    if-ge v12, v9, :cond_34

    if-ge v9, v5, :cond_34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_34

    .line 1174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v13, v9, v12}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 1178
    :cond_34
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1181
    .end local v3    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v5    # "displayedCount":I
    .end local v9    # "idx":I
    :cond_35
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    .line 951
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_f
        0x8 -> :sswitch_f
        0x9 -> :sswitch_f
        0xa -> :sswitch_f
        0xb -> :sswitch_f
        0xc -> :sswitch_f
        0xd -> :sswitch_f
        0xe -> :sswitch_f
        0xf -> :sswitch_f
        0x10 -> :sswitch_f
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x3a -> :sswitch_1
        0x3b -> :sswitch_6
        0x3c -> :sswitch_6
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_2
        0x72 -> :sswitch_9
        0x73 -> :sswitch_7
        0xd4 -> :sswitch_a
        0xe4 -> :sswitch_3
        0xe9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1414
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1420
    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 1421
    .local v1, "inputMethod":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1422
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->closeKeyboard()V

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    .line 1425
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    .line 1426
    .local v0, "candidates":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    .line 1428
    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .end local v0    # "candidates":Landroid/view/View;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    goto :goto_0

    .line 1418
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 768
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 769
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v1, 0x0

    .line 770
    .local v1, "editorClass":I
    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v7, 0xf

    .line 771
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    .line 773
    .local v4, "isAltRightPressed":Z
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string v7, "com.sec.android.app.popupcalculator"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.sec.android.app.videoplayer"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 776
    :cond_1
    const/4 v7, 0x0

    .line 893
    :goto_1
    return v7

    .line 771
    .end local v4    # "isAltRightPressed":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 778
    .restart local v4    # "isAltRightPressed":Z
    :cond_3
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x7

    if-lt p1, v7, :cond_4

    const/16 v7, 0x10

    if-gt p1, v7, :cond_4

    .line 780
    const/4 v7, 0x0

    goto :goto_1

    .line 784
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/4 v7, 0x3

    if-eq v1, v7, :cond_6

    const/4 v7, 0x2

    if-ne v1, v7, :cond_7

    :cond_6
    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ks02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 787
    const/4 v7, 0x0

    goto :goto_1

    .line 790
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 791
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isLatinSoftFuncKey()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x7

    if-ne p1, v7, :cond_9

    .line 792
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_8

    .line 793
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    .line 796
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 797
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 798
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v8, -0xff

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 799
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    .line 800
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 801
    const/4 v7, 0x1

    goto :goto_1

    .line 802
    :cond_9
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 803
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 808
    :cond_a
    const/16 v0, -0xff

    .line 810
    .local v0, "charCode":S
    const/16 v7, 0x3c

    if-ne p1, v7, :cond_f

    .line 811
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 812
    .local v6, "lang":I
    const-string v7, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x70740000

    if-eq v6, v7, :cond_b

    const v7, 0x70744252

    if-ne v6, v7, :cond_f

    .line 814
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v2, 0x33

    .line 815
    .local v2, "fakeKey":I
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 816
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 814
    .end local v2    # "fakeKey":I
    :cond_c
    const/16 v2, 0x2d

    goto :goto_2

    .line 818
    .restart local v2    # "fakeKey":I
    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    .line 819
    const/16 v7, -0xff

    if-ne v0, v7, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 820
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 826
    .end local v2    # "fakeKey":I
    .end local v6    # "lang":I
    :cond_f
    sparse-switch p1, :sswitch_data_0

    .line 883
    if-nez v4, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_10
    const/4 v5, 0x1

    .line 884
    .local v5, "isaltpress":Z
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v8

    invoke-virtual {v7, p1, v8, v5}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    .line 889
    .end local v5    # "isaltpress":Z
    :cond_11
    :goto_4
    const/16 v7, -0xff

    if-ne v0, v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 890
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 829
    :sswitch_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 830
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 831
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_13

    .line 832
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    .line 834
    :cond_13
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 837
    :cond_14
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    goto :goto_4

    .line 841
    :sswitch_1
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 843
    :sswitch_2
    const-string v7, "SCH-I415"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 844
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 845
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 847
    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 850
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 851
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 852
    :cond_17
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 853
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 858
    :sswitch_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 860
    :cond_19
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 861
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 865
    :sswitch_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 866
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 868
    :sswitch_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    goto/16 :goto_4

    .line 874
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-nez v7, :cond_1a

    if-eqz v4, :cond_1b

    .line 875
    :cond_1a
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 877
    :cond_1b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 878
    :cond_1c
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 883
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 893
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 826
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(IZ)V

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_4

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(I)V

    .line 523
    :cond_4
    return-void
.end method

.method public onRelease(I)V
    .locals 4
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3eb

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ea

    if-ne p1, v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(IZ)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 553
    .local v0, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v1, :cond_1

    const-string v1, "com.android.mms"

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/input/InputModule;->onText(Ljava/lang/CharSequence;)V

    .line 562
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    .line 564
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 586
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 587
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 589
    .local v0, "m_hanja":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1, v0}, Lcom/diotek/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "m_hanja":Ljava/lang/CharSequence;
    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->FrequencyUpdateHanja(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 597
    :goto_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    .line 600
    :cond_0
    return-void

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public predictionWord()Z
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->predictionWord()Z

    move-result v0

    .line 1770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->predictionWordStartInputViewContinue()Z

    move-result v0

    .line 1778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previewTrace(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->previewTrace(I)V

    .line 1841
    :cond_0
    return-void
.end method

.method protected abstract processFunctionKey(I)V
.end method

.method public recaptureWordXT9()V
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->processRecaptureXT9()V

    .line 1974
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->release()V

    .line 154
    return-void
.end method

.method public removeTerm(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->removeTerm(I)V

    .line 1816
    :cond_0
    return-void
.end method

.method public resetProdictionWord()V
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->resetPredictionWord()V

    .line 1794
    :cond_0
    return-void
.end method

.method public resetTextFieldState()V
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->resetTextFieldState()V

    .line 1833
    :cond_0
    return-void
.end method

.method public setAccentChar(I)V
    .locals 1
    .param p1, "accentKeyCode"    # I

    .prologue
    .line 1554
    const/16 v0, -0xff

    if-ne p1, v0, :cond_0

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    .line 1559
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    .line 1560
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    goto :goto_0
.end method

.method public setAcuteAccentPressed(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 1652
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    .line 1653
    return-void
.end method

.method public setAcuteAccentSplitState(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 1644
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    .line 1645
    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 1
    .param p1, "autoSpaceOn"    # Z

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setAutoSpaceOn(Z)V

    .line 2002
    :cond_0
    return-void
.end method

.method public setAvailableHWRLanguage()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1919
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    .line 1921
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInstallableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    .line 1925
    :goto_0
    return-void

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    goto :goto_0
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 1
    .param p1, "nPhoneticIndex"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setChinesePhoneticIndex(I)V

    .line 1491
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setContextAwareUniqueID(Ljava/lang/String;)V

    .line 2010
    :cond_0
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setFieldSpecificType(I)V

    .line 2096
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setHwrPanelRect(IIII)V

    .line 1540
    return-void
.end method

.method protected final setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "recogintion"    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3, "candidate"    # Lcom/diotek/ime/framework/engine/InputEngine;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "recogintion"    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3, "candidate"    # Lcom/diotek/ime/framework/engine/InputEngine;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "module"    # Lcom/diotek/ime/framework/input/InputModule;

    .prologue
    .line 180
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 181
    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "SamsungIME"

    const-string v1, "Input module setting fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aput-object p2, v0, p1

    .line 187
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initialize()V

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 1
    .param p1, "trueOrFalse"    # Z

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setIsPrivateImeOptionsCSC(Z)V

    .line 2025
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 1
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1550
    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setKeyboardSize(II)V

    .line 1535
    return-void
.end method

.method public setProdictionWord(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setPredictionWord(Z)V

    .line 1801
    :cond_0
    return-void
.end method

.method public setSideSyncInputModule(I)V
    .locals 4
    .param p1, "languageID"    # I

    .prologue
    .line 2101
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 2103
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2104
    .local v0, "inputMethod":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 2105
    .local v2, "range":I
    invoke-virtual {p0, v0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v1

    .line 2107
    .local v1, "inputModuleIndex":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v3, v3

    if-le v3, v1, :cond_0

    .line 2108
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 2110
    :cond_0
    return-void
.end method

.method public setSuggestionActiveIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 1865
    return-void
.end method

.method public setTraceStatus()V
    .locals 0

    .prologue
    .line 1578
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method protected toggleInputLanguage()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 2
    .param p1, "isAcuteAccent"    # Z

    .prologue
    .line 1631
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int v0, p1, v1

    .line 1632
    .local v0, "accent":Z
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    if-eq v1, v0, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateAcuteAccentState(Z)V

    .line 1634
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    .line 1636
    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateCandidates()V

    .line 1469
    return-void
.end method

.method public updateFullText()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public final updateHwPhonepadInputModule()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "language":I
    const/high16 v1, 0x6b6f0000

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    goto :goto_0
.end method

.method public final updateInputModule()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 207
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_6

    .line 209
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 210
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 211
    .local v3, "inputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    .line 212
    .local v6, "range":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 213
    .local v5, "language":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    .line 214
    invoke-virtual {p0, v3, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v4

    .line 215
    .local v4, "inputModuleIndex":I
    invoke-virtual {p0, v3, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputEngineIndex(III)I

    move-result v2

    .line 216
    .local v2, "inputEngineIndex":I
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getHWInputModuleIndex(I)I

    move-result v1

    .line 217
    .local v1, "hwInputModuleIndex":I
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getHWInputEngineIndex(I)I

    move-result v0

    .line 219
    .local v0, "hwInputEngineIndex":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v7, v7

    if-le v7, v4, :cond_5

    .line 220
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_4

    .line 221
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 222
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 225
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 229
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 231
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 235
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_7

    .line 240
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 258
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v7, v7, v4

    iput-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 259
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v7, v7, v1

    iput-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    .line 260
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setHWInputEngineIndex(I)V

    .line 261
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setCurrentEngineIndex(I)V

    .line 262
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    .line 263
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setChineseFuzzyPinyin()V

    .line 265
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_5

    .line 266
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->setAddStrokeCallBackOnHWREngine()V

    .line 267
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->closing()V

    .line 268
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->initialize()V

    .line 272
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 273
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateHwPhonepadInputModule()V

    .line 276
    .end local v0    # "hwInputEngineIndex":I
    .end local v1    # "hwInputModuleIndex":I
    .end local v2    # "inputEngineIndex":I
    .end local v3    # "inputMethod":I
    .end local v4    # "inputModuleIndex":I
    .end local v5    # "language":I
    .end local v6    # "range":I
    :cond_6
    return-void

    .line 241
    .restart local v0    # "hwInputEngineIndex":I
    .restart local v1    # "hwInputModuleIndex":I
    .restart local v2    # "inputEngineIndex":I
    .restart local v3    # "inputMethod":I
    .restart local v4    # "inputModuleIndex":I
    .restart local v5    # "language":I
    .restart local v6    # "range":I
    :cond_7
    const/high16 v7, 0x74680000

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6a610000

    if-ne v5, v7, :cond_9

    .line 242
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 243
    :cond_9
    const/high16 v7, 0x6b6f0000

    if-ne v5, v7, :cond_c

    .line 244
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 245
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 246
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 247
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 249
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 251
    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 252
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 254
    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updatePredictionSettingAndEngine()V

    .line 1994
    :cond_0
    return-void
.end method

.method public updateShiftState()V
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    .line 1481
    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionForSwiftKey()V

    .line 1981
    return-void
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->writeDBdataToFileOnFinishInput()V

    .line 158
    return-void
.end method
