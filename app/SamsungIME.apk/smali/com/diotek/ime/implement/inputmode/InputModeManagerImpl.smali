.class public Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;
.super Lcom/diotek/ime/framework/inputmode/InputModeManager;
.source "InputModeManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;-><init>()V

    .line 18
    return-void
.end method

.method private getPhonePadFromHandwritingMethod()I
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    .line 285
    .local v0, "currentKeypadType":I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 286
    :cond_0
    move v1, v0

    .line 290
    .local v1, "result":I
    :goto_0
    return v1

    .line 288
    .end local v1    # "result":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_0
.end method


# virtual methods
.method protected computeValidInputMethod()I
    .locals 21

    .prologue
    .line 22
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v5

    .line 23
    .local v5, "inputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v3

    .line 24
    .local v3, "hwrStatus":Z
    const/4 v14, 0x0

    .line 25
    .local v14, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    .line 26
    .local v9, "isLandscape":Z
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v8

    .line 27
    .local v8, "isKorSeperatlyInputMethod":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    .line 28
    .local v10, "isPasswordMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v15

    .line 29
    .local v15, "supportFullScreesn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    .line 30
    .local v17, "useFullScreesn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    .line 32
    .local v7, "isJapanese":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 33
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v12

    .line 34
    .local v12, "privateImeOptionsInputType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableHWRInput()Z

    move-result v6

    .line 35
    .local v6, "isDisableHWRInputOnPrivateOptions":Z
    const/4 v2, 0x0

    .line 36
    .local v2, "editorClass":I
    if-eqz v4, :cond_0

    .line 37
    iget v0, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v2, v18, 0xf

    .line 40
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 41
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v12, v0, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 46
    :cond_1
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 47
    packed-switch v5, :pswitch_data_0

    .line 62
    :pswitch_0
    const/4 v14, 0x1

    .line 275
    :cond_2
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v18

    move/from16 v0, v18

    if-eq v3, v0, :cond_3

    .line 276
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setForceSetHWRMode(Z)V

    .line 277
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 279
    :cond_3
    return v14

    .line 49
    :pswitch_1
    const/4 v14, 0x1

    .line 50
    goto :goto_0

    .line 54
    :pswitch_2
    move v14, v5

    .line 55
    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v14

    .line 59
    goto :goto_0

    .line 65
    :cond_4
    const/16 v18, 0x9

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    .line 67
    :cond_5
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 68
    packed-switch v5, :pswitch_data_1

    .line 87
    :pswitch_4
    const/4 v14, 0x1

    .line 88
    goto :goto_0

    .line 70
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto :goto_0

    .line 73
    :cond_6
    const/4 v14, 0x1

    .line 75
    goto :goto_0

    .line 79
    :pswitch_6
    move v14, v5

    .line 80
    goto :goto_0

    .line 83
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v14

    .line 84
    goto :goto_0

    .line 92
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 99
    :cond_8
    if-eqz v8, :cond_d

    .line 100
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v18

    if-nez v18, :cond_9

    .line 102
    const/4 v14, 0x0

    goto :goto_0

    .line 104
    :cond_9
    if-eqz v5, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_b

    .line 106
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v11

    .line 107
    .local v11, "keypadType":I
    if-nez v11, :cond_c

    .line 108
    const/4 v5, 0x0

    .line 113
    .end local v11    # "keypadType":I
    :cond_b
    :goto_1
    move v14, v5

    goto/16 :goto_0

    .line 110
    .restart local v11    # "keypadType":I
    :cond_c
    const/4 v5, 0x1

    goto :goto_1

    .line 115
    .end local v11    # "keypadType":I
    :cond_d
    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 116
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 117
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v14

    goto/16 :goto_0

    .line 119
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_f

    if-nez v8, :cond_f

    .line 120
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 122
    :cond_f
    move v14, v5

    goto/16 :goto_0

    .line 128
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 129
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 130
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 142
    :cond_12
    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    const/16 v18, 0x9

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v12, v0, :cond_16

    .line 145
    :cond_13
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 146
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v5, v0, :cond_14

    .line 147
    const/4 v14, 0x7

    goto/16 :goto_0

    .line 148
    :cond_14
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    .line 149
    const/16 v14, 0x8

    goto/16 :goto_0

    .line 151
    :cond_15
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 153
    :cond_16
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v2, v0, :cond_17

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_17

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_19

    .line 156
    :cond_17
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 157
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    .line 159
    if-eqz v9, :cond_2

    if-nez v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    .line 160
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 163
    :cond_18
    packed-switch v5, :pswitch_data_2

    .line 170
    const/4 v14, 0x1

    .line 171
    goto/16 :goto_0

    .line 166
    :pswitch_8
    move v14, v5

    .line 167
    goto/16 :goto_0

    .line 174
    :cond_19
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    .line 175
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 176
    packed-switch v5, :pswitch_data_3

    .line 183
    const/4 v14, 0x1

    .line 184
    goto/16 :goto_0

    .line 179
    :pswitch_9
    move v14, v5

    .line 180
    goto/16 :goto_0

    .line 186
    :cond_1a
    if-eqz v10, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 187
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    .line 189
    if-eqz v9, :cond_2

    if-nez v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    .line 190
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 192
    :cond_1b
    if-eqz v9, :cond_24

    .line 193
    if-eqz v7, :cond_20

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_1c

    if-nez v5, :cond_20

    .line 196
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v13

    .line 197
    .local v13, "range":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_1d

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1e

    .line 199
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 200
    :cond_1e
    if-nez v13, :cond_1f

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    .line 203
    :cond_1f
    move v14, v5

    goto/16 :goto_0

    .line 205
    .end local v13    # "range":I
    :cond_20
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_21

    .line 206
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 208
    :cond_21
    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 209
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    .line 211
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    .line 212
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 215
    :cond_22
    if-eqz v15, :cond_23

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v18

    if-eqz v18, :cond_23

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_23

    .line 219
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 221
    :cond_23
    move v14, v5

    goto/16 :goto_0

    .line 226
    :cond_24
    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 227
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    .line 230
    :cond_25
    if-eqz v15, :cond_26

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v18

    if-eqz v18, :cond_26

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_26

    .line 234
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 236
    :cond_26
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v18

    if-nez v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v18

    if-eqz v18, :cond_30

    .line 238
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v13

    .line 239
    .restart local v13    # "range":I
    if-eqz v5, :cond_28

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2c

    :cond_28
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_29

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_2c

    .line 244
    :cond_29
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v16

    .line 246
    .local v16, "symKeyboardType":I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    .line 247
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 248
    :cond_2a
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 249
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 251
    :cond_2b
    move v14, v5

    goto/16 :goto_0

    .line 253
    .end local v16    # "symKeyboardType":I
    :cond_2c
    if-eqz v5, :cond_2d

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2e

    :cond_2d
    if-nez v13, :cond_2e

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    .line 258
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v5, v0, :cond_2f

    const/16 v18, 0x7

    move/from16 v0, v18

    if-eq v5, v0, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-nez v18, :cond_2f

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    .line 264
    :cond_2f
    move v14, v5

    goto/16 :goto_0

    .line 268
    .end local v13    # "range":I
    :cond_30
    move v14, v5

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 163
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 176
    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setIsVoiceInstalled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 295
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableVoice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    .line 296
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
