.class public Lcom/diotek/ime/framework/view/DefaultKeyboard;
.super Lcom/diotek/ime/framework/view/Keyboard;
.source "DefaultKeyboard.java"


# instance fields
.field private LAST_PHRASE_INDEX:I

.field private mDefaultFloatingWidth:I

.field private mDefaultKeyIndex:I

.field private mDefaultWidth:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsLandscape:Z

.field private mIsNormalEditorType:Z

.field private mIsQwerty:Z

.field private mIsTabletModel:Z

.field private mIsUseCustomArea:Z

.field private mPopupMiniKeyboardType:I

.field private mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mUseCustomArea:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;IIZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I
    .param p6, "firstKeyIsLeft"    # Z
    .param p7, "isDefaultKeyPressed"    # Z

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v13, 0x5

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v13, 0x9

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v13, 0x6

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 77
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "n":I
    :goto_0
    if-ge v1, v9, :cond_5

    .line 79
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 80
    .local v4, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 81
    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v14, 0x0

    const/16 v15, -0x101

    aput v15, v13, v14

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-static {v13}, Ljava/lang/Character;->isDigit(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 87
    invoke-static {}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 90
    .local v11, "res":Landroid/content/res/Resources;
    sget v13, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->parent_Key_INDEX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getShortCutPhrasePrefKey(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 91
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .local v10, "paint":Landroid/graphics/Paint;
    const v13, 0x7f09002f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 93
    .local v7, "minTextWidth":I
    const v13, 0x7f090030

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v6, v13

    .line 94
    .local v6, "mDefaultKeyWidth":I
    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v12, v13

    .line 95
    .local v12, "textWidth":I
    const/16 v8, 0x8

    .line 96
    .local v8, "mkeyWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 97
    .local v3, "inputMode":I
    if-ge v12, v7, :cond_3

    .line 98
    iput v6, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    .line 105
    :goto_1
    iget v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/Keyboard;->setTotalWidth(I)V

    .line 78
    .end local v3    # "inputMode":I
    .end local v6    # "mDefaultKeyWidth":I
    .end local v7    # "minTextWidth":I
    .end local v8    # "mkeyWidth":I
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "textWidth":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 100
    .restart local v3    # "inputMode":I
    .restart local v6    # "mDefaultKeyWidth":I
    .restart local v7    # "minTextWidth":I
    .restart local v8    # "mkeyWidth":I
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v12    # "textWidth":I
    :cond_3
    const/16 v13, 0x8

    if-ne v3, v13, :cond_4

    .line 101
    move-object/from16 v0, p0

    iget v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    mul-int/2addr v13, v12

    const v14, 0x7f09002e

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    goto :goto_1

    .line 103
    :cond_4
    mul-int v13, v12, v8

    const v14, 0x7f09002e

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    goto :goto_1

    .line 109
    .end local v3    # "inputMode":I
    .end local v4    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v6    # "mDefaultKeyWidth":I
    .end local v7    # "minTextWidth":I
    .end local v8    # "mkeyWidth":I
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "textWidth":I
    :cond_5
    if-eqz p7, :cond_6

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "index":I
    if-eqz p6, :cond_8

    .line 112
    const/4 v13, -0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_7

    .line 113
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 114
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 127
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v9    # "n":I
    :cond_6
    :goto_2
    return-void

    .line 116
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v9    # "n":I
    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    div-int/lit8 v2, v13, 0x2

    .line 117
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 118
    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2

    .line 121
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .line 122
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 123
    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "icons"    # [Landroid/graphics/drawable/Drawable;
    .param p5, "codes"    # [I
    .param p6, "columns"    # I
    .param p7, "horizontalPadding"    # I
    .param p8, "isDefaultKeyPressed"    # Z
    .param p9, "isLastKeyPress"    # Z

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 161
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 162
    .local v8, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "n":I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 164
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 165
    .local v7, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p5, v6

    aput v2, v0, v1

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 168
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 169
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 170
    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    .end local v7    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_0
    if-eqz p8, :cond_1

    .line 173
    if-eqz p9, :cond_2

    .line 174
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 175
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 183
    .end local v6    # "i":I
    .end local v9    # "n":I
    :cond_1
    :goto_1
    return-void

    .line 178
    .restart local v6    # "i":I
    .restart local v9    # "n":I
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;IIZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "labels"    # [Ljava/lang/String;
    .param p5, "columns"    # I
    .param p6, "horizontalPadding"    # I
    .param p7, "isDefaultKeyPressed"    # Z
    .param p8, "isCandidateDotCom"    # Z

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 132
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 133
    .local v8, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 134
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "n":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 135
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 136
    .local v7, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 137
    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 138
    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0xff

    aput v2, v0, v1

    .line 134
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0x72

    aput v2, v0, v1

    goto :goto_1

    .line 144
    .end local v7    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    if-eqz p8, :cond_3

    .line 145
    if-eqz p7, :cond_2

    .line 146
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 147
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 156
    .end local v6    # "i":I
    .end local v9    # "n":I
    :cond_2
    :goto_2
    return-void

    .line 150
    .restart local v6    # "i":I
    .restart local v9    # "n":I
    :cond_3
    if-eqz p7, :cond_2

    .line 151
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 152
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "defaultSymbolValues"    # [Ljava/lang/String;
    .param p5, "icons"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "codes"    # [I
    .param p7, "columns"    # I
    .param p8, "horizontalPadding"    # I
    .param p9, "isDefaultKeyPressed"    # Z
    .param p10, "isLastKeyPress"    # Z

    .prologue
    .line 187
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v1, 0x8

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v1, 0x9

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v1, 0x6

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 188
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    .line 189
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 190
    const/4 v7, 0x0

    .local v7, "i":I
    move/from16 v10, p7

    .local v10, "n":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 191
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 192
    .local v8, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    array-length v1, p4

    if-ge v7, v1, :cond_0

    .line 193
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x82

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 194
    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 195
    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 190
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 198
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 199
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 203
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    move/from16 v7, p7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v7, v10, :cond_3

    .line 204
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 205
    .restart local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    move-object/from16 v0, p6

    array-length v1, v0

    add-int v1, v1, p7

    if-ge v7, v1, :cond_2

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sub-int v3, v7, p7

    aget v3, p6, v3

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 207
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 208
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 209
    sub-int v1, v7, p7

    aget-object v1, p5, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 203
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 211
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 212
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 213
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .line 216
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_3
    if-eqz p9, :cond_4

    .line 217
    if-eqz p10, :cond_5

    .line 218
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 219
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 226
    .end local v7    # "i":I
    .end local v10    # "n":I
    :cond_4
    :goto_4
    return-void

    .line 221
    .restart local v7    # "i":I
    .restart local v10    # "n":I
    :cond_5
    move/from16 v0, p7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 222
    move/from16 v0, p7

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;IIZZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "defaultSymbolValues"    # [Ljava/lang/String;
    .param p5, "usedSymbolValues"    # [Ljava/lang/String;
    .param p6, "columns"    # I
    .param p7, "horizontalPadding"    # I
    .param p8, "isMoreSym"    # Z
    .param p9, "isDefaultPressed"    # Z

    .prologue
    .line 230
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 32
    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 40
    const/16 v1, 0x8

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    .line 41
    const/16 v1, 0x9

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    .line 42
    const/4 v1, 0x6

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    .line 43
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 231
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    .line 232
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v11, 0x0

    .line 233
    .local v11, "nMoreSym":I
    if-eqz p8, :cond_0

    .line 234
    const/4 v11, 0x1

    .line 236
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    move-object/from16 v0, p5

    array-length v10, v0

    .local v10, "n":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 237
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 238
    .local v8, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 241
    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 242
    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 236
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    if-eqz p8, :cond_2

    .line 245
    move-object/from16 v0, p5

    array-length v1, v0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 246
    .restart local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7f

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 249
    const-string v1, "sym"

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 251
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_2
    move-object/from16 v0, p5

    array-length v1, v0

    add-int v7, v1, v11

    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    add-int v10, v1, v11

    :goto_1
    if-ge v7, v10, :cond_3

    .line 252
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 253
    .restart local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 256
    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 257
    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 260
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_3
    if-eqz p9, :cond_4

    .line 261
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    .line 262
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    .line 264
    :cond_4
    return-void
.end method


# virtual methods
.method public getDefaultKeyIndex()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHorizontalGap()I
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHorizontalGap()I

    move-result v0

    return v0
.end method

.method public getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 268
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 270
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 275
    .end local v0    # "i":I
    :goto_1
    return-object v2

    .line 269
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v0

    return v0
.end method

.method public getPopupMiniKeyboardType()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    return v0
.end method

.method public getShortCutPhrasePrefKey(I)Ljava/lang/String;
    .locals 11
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v10, 0x0

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "maxstringNum":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 342
    .local v6, "pref":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phrase"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "phraseKey":Ljava/lang/String;
    const-string v8, "UTF-16"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 344
    .local v0, "CS":Ljava/nio/charset/Charset;
    const-string v8, ""

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 345
    .local v1, "bb":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 346
    .local v5, "phraseText":Ljava/lang/String;
    const-string v8, ""

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 348
    .local v7, "textLength":I
    const/4 v8, 0x0

    :try_start_0
    iget v9, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->offsetByCodePoints(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 353
    :goto_0
    if-le v7, v3, :cond_0

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    :cond_0
    return-object v5

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 351
    const-string v8, "SamsungIME"

    const-string v9, "maxstringNum is IndexOutOfBoundsException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsableCustomArea()[Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getVerticalGap()I

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    return v0
.end method

.method public isNormalEditorType()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    return v0
.end method

.method public isQwerty()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    return v0
.end method

.method public isTabletModel()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    return v0
.end method

.method public isUseCustomArea()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    return v0
.end method

.method public setLandscape(Z)V
    .locals 0
    .param p1, "landscape"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    .line 321
    return-void
.end method

.method public setPopupMiniKeyboardType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    .line 329
    return-void
.end method

.method public setUseCustomArea(ZZZZ)V
    .locals 0
    .param p1, "isTabletModel"    # Z
    .param p2, "isQwerty"    # Z
    .param p3, "isNormalEditorType"    # Z
    .param p4, "isUseCustomArea"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    .line 285
    iput-boolean p3, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    .line 286
    iput-boolean p2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    .line 287
    iput-boolean p4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    .line 288
    return-void
.end method

.method public setUseCustomArea([Z)V
    .locals 0
    .param p1, "useCustomArea"    # [Z

    .prologue
    .line 291
    iput-object p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    .line 292
    return-void
.end method
