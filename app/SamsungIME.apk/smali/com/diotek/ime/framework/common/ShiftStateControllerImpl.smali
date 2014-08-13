.class public final Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;
.super Ljava/lang/Object;
.source "ShiftStateControllerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/common/ShiftStateController;


# static fields
.field private static final CAPS_LOCK_STATE:I = 0x0

.field private static final NON_SHIFT_STATE:I = 0x2

.field private static final SHIFTED_STATE:I = 0x1

.field private static final SHIFT_PRESSED_STATE:I = 0x3

.field private static mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;


# instance fields
.field private mBackupCapsLock:Z

.field private mCapsLocked:Z

.field private mCurrentPolicy:I

.field private mForcedCapslock:Z

.field private mInputLanguage:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsAutoCapsState:Z

.field private mIsNextShiftState:Z

.field private mIsSymbolMode:Z

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mShiftHoldOn:Z

.field private mShiftKeyCode:I

.field private mShiftMomentary:Z

.field private mShiftPressed:Z

.field private mShifted:Z

.field private mSplitTap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 25
    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 26
    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 28
    iput v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    .line 29
    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    .line 30
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 31
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    .line 32
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 33
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    .line 34
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    .line 35
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    .line 36
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    .line 37
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    .line 38
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    .line 39
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    .line 40
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    .line 41
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    .line 76
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 77
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/common/ShiftStateController;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 72
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-object v0
.end method

.method private getNextShiftState()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 163
    iput-boolean v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    .line 165
    iget-boolean v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v7, :cond_0

    .line 166
    const/4 v5, 0x3

    .line 229
    :goto_0
    return v5

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isNextShiftState()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 170
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 171
    .local v1, "editInfo":Landroid/view/inputmethod/EditorInfo;
    const/4 v2, 0x0

    .line 172
    .local v2, "editorFlag":I
    if-eqz v1, :cond_1

    .line 173
    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v8, 0xfff000

    and-int v2, v7, v8

    .line 176
    :cond_1
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 177
    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_AUTO_CAPS"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    .line 178
    .local v4, "isAutoCapsOn":Z
    if-eqz v4, :cond_5

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "cursorCapsMode":I
    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v7

    const/high16 v8, 0x6b6f0000

    if-eq v7, v8, :cond_2

    .line 181
    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 183
    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v7

    if-nez v7, :cond_5

    .line 184
    iget-boolean v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v7, :cond_3

    const/16 v7, 0x1000

    if-ne v2, v7, :cond_4

    :cond_3
    move v5, v6

    .line 185
    goto :goto_0

    .line 187
    :cond_4
    iput-boolean v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    .line 188
    iput-boolean v5, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    goto :goto_0

    .line 224
    .end local v0    # "cursorCapsMode":I
    .end local v1    # "editInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "editorFlag":I
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "isAutoCapsOn":Z
    :cond_5
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setNextShiftState(Z)V

    .line 225
    iget-boolean v5, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v5, :cond_6

    move v5, v6

    .line 226
    goto :goto_0

    .line 229
    :cond_6
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getPolicyWithLanguage(I)I
    .locals 5
    .param p1, "languageId"    # I

    .prologue
    const/high16 v4, 0x74680000

    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    .local v0, "mIsTabletMode":Z
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isNoUpperCaseLanguage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_0

    if-nez v0, :cond_2

    .line 303
    :cond_0
    const/4 v1, 0x2

    .line 317
    :cond_1
    :goto_0
    return v1

    .line 304
    :cond_2
    const/high16 v2, 0x6b6f0000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x6b610000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x61720000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x66610000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x75720000

    if-eq p1, v2, :cond_3

    const v2, 0x7a68434e

    if-eq p1, v2, :cond_3

    const v2, 0x7a68484b

    if-eq p1, v2, :cond_3

    const v2, 0x7a685457

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_3

    const/high16 v2, 0x6b6d0000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x6c6f0000

    if-ne p1, v2, :cond_1

    .line 315
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initShiftState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftPressedState(Z)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftMomentaryState(Z)V

    .line 336
    return-void
.end method

.method private isNoUpperCaseLanguage(I)Z
    .locals 7
    .param p1, "languageId"    # I

    .prologue
    const/4 v5, 0x0

    .line 322
    iget-object v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    .line 323
    .local v3, "languages":[Lcom/diotek/ime/framework/common/Language;
    move-object v0, v3

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 324
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 325
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->hasShift()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    .line 328
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_0
    return v5

    .line 323
    .restart local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public backupCapsLock()V
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    .line 426
    return-void
.end method

.method public checkIfAutoCapsState()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    return v0
.end method

.method public getCapsLockState()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    return v0
.end method

.method public getLetterMode()Z
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "letterMode":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    .line 51
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v1, :cond_2

    .line 53
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    if-nez v1, :cond_1

    .line 54
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 65
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_4

    .line 60
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 62
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPressedShiftKeyCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    return v0
.end method

.method public getShiftHoldOnState()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    return v0
.end method

.method public getShiftMomentaryState()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    return v0
.end method

.method public getShiftPolicy()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    return v0
.end method

.method public getShiftPressedState()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    return v0
.end method

.method public getShiftState()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    return v0
.end method

.method public getSplitTapState()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    return v0
.end method

.method public getSymbolMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 495
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initBackupCapsLock()V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    .line 421
    :cond_0
    return-void
.end method

.method public isForcedCapsLockForGreek()Z
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    const/high16 v1, 0x656c0000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextShiftState()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    return v0
.end method

.method public isUpdateLetterMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getNextShiftState()I

    move-result v0

    .line 391
    .local v0, "nextShifteState":I
    packed-switch v0, :pswitch_data_0

    .line 413
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 393
    :pswitch_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 398
    :pswitch_1
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 403
    :pswitch_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-nez v2, :cond_2

    goto :goto_0

    .line 408
    :pswitch_3
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public restoreCapslock()V
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    .line 431
    return-void
.end method

.method public setCapsLockState(Z)V
    .locals 2
    .param p1, "caps"    # Z

    .prologue
    const/4 v1, 0x0

    .line 142
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 147
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 148
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    .line 150
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setForcedCapslock(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    .line 436
    return-void
.end method

.method public setHWCapsLockLed(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 446
    return-void
.end method

.method public setNextShiftState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    .line 476
    return-void
.end method

.method public setPolicyWithLanguage(I)Z
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    .line 284
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getPolicyWithLanguage(I)I

    move-result v1

    .line 285
    .local v1, "policy":I
    iget v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 287
    .local v0, "isPolicyChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 288
    iput v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initShiftState()V

    .line 293
    return v0

    .line 285
    .end local v0    # "isPolicyChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPressedShiftKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    .line 110
    return-void
.end method

.method public setShiftHoldOn(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    .line 461
    return-void
.end method

.method public setShiftMomentaryState(Z)V
    .locals 0
    .param p1, "shift"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    .line 138
    return-void
.end method

.method public setShiftPressedState(Z)V
    .locals 1
    .param p1, "shift"    # Z

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    .line 132
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    goto :goto_0
.end method

.method public setShiftState(Z)V
    .locals 1
    .param p1, "shift"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 121
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method public setSplitTapState(Z)V
    .locals 0
    .param p1, "shift"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    .line 486
    return-void
.end method

.method public toggleShiftState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    .line 236
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initBackupCapsLock()V

    .line 242
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v0, :cond_2

    .line 243
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 244
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 245
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getSplitTapState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 250
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 251
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_1

    .line 252
    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_4

    .line 253
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 254
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 255
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_1

    .line 257
    :cond_4
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    .line 258
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    .line 260
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    .line 269
    :goto_2
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    goto :goto_1

    .line 266
    :cond_5
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_2
.end method

.method public updateLetterMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    .line 341
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getNextShiftState()I

    move-result v0

    .line 347
    .local v0, "nextShifteState":I
    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initBackupCapsLock()V

    move v1, v2

    .line 380
    goto :goto_0

    .line 349
    :pswitch_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v3, :cond_0

    .line 352
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setCapsLockState(Z)V

    goto :goto_1

    .line 355
    :pswitch_1
    iget-object v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendSideSyncShiftState(Z)V

    .line 356
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v3, :cond_0

    .line 359
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    goto :goto_1

    .line 362
    :pswitch_2
    iget-object v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendSideSyncShiftState(Z)V

    .line 363
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v3, :cond_0

    .line 366
    :cond_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v3, :cond_4

    .line 367
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setCapsLockState(Z)V

    .line 369
    :cond_4
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    goto :goto_1

    .line 372
    :pswitch_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
