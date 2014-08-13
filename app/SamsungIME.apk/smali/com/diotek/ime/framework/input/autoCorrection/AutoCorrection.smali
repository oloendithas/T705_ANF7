.class public final Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;
.super Ljava/lang/Object;
.source "AutoCorrection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAutoCorrection(IILandroid/view/inputmethod/InputConnection;)Z
    .locals 6
    .param p0, "mPosPrevText"    # I
    .param p1, "mPosNextText"    # I
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 85
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 86
    .local v2, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 87
    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v4, v5

    .line 88
    .local v0, "cursorLocation":I
    add-int v1, v0, p1

    .line 89
    .local v1, "endOfselectedText":I
    if-gt v0, v1, :cond_0

    .line 90
    move v3, v0

    .line 91
    .local v3, "startPosition":I
    sub-int/2addr v3, p0

    .line 92
    invoke-interface {p2, v3, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 99
    .end local v0    # "cursorLocation":I
    .end local v1    # "endOfselectedText":I
    .end local v3    # "startPosition":I
    :goto_0
    const/4 p0, 0x0

    .line 100
    const/4 p1, 0x0

    .line 103
    const/4 v4, 0x1

    return v4

    .line 94
    .restart local v0    # "cursorLocation":I
    .restart local v1    # "endOfselectedText":I
    :cond_0
    invoke-interface {p2, p0, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 97
    .end local v0    # "cursorLocation":I
    .end local v1    # "endOfselectedText":I
    :cond_1
    invoke-interface {p2, p0, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public static doAutoCorrection(Ljava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)Z
    .locals 6
    .param p0, "candidate"    # Ljava/lang/CharSequence;
    .param p1, "mPosPrevText"    # I
    .param p2, "mPosNextText"    # I
    .param p3, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 125
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 127
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 128
    :cond_2
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 129
    .local v2, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_4

    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 130
    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v4, v5

    .line 131
    .local v0, "cursorLocation":I
    add-int v1, v0, p2

    .line 132
    .local v1, "endOfselectedText":I
    if-gt v0, v1, :cond_3

    .line 133
    move v3, v0

    .line 134
    .local v3, "startPosition":I
    sub-int/2addr v3, p1

    .line 135
    invoke-interface {p3, v3, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 143
    .end local v0    # "cursorLocation":I
    .end local v1    # "endOfselectedText":I
    .end local v3    # "startPosition":I
    :goto_1
    const/4 p1, 0x0

    .line 144
    const/4 p2, 0x0

    .line 145
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .restart local v0    # "cursorLocation":I
    .restart local v1    # "endOfselectedText":I
    :cond_3
    invoke-interface {p3, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 140
    .end local v0    # "cursorLocation":I
    .end local v1    # "endOfselectedText":I
    :cond_4
    invoke-interface {p3, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1
.end method

.method public static doAutoCorrection(Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/view/inputmethod/InputConnection;)Z
    .locals 8
    .param p0, "candidate"    # Ljava/lang/CharSequence;
    .param p1, "verbatim"    # Ljava/lang/String;
    .param p2, "cursorLocation"    # I
    .param p3, "mPosPrevText"    # I
    .param p4, "mPosNextText"    # I
    .param p5, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v5, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, "res":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 23
    .local v1, "inputMode":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v5

    .line 27
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    .line 28
    .local v2, "mInputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 29
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 30
    move v4, p2

    .line 31
    .local v4, "startPosition":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 32
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    invoke-direct {v0, v4, p1, p0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 33
    .local v0, "ci":Landroid/view/inputmethod/CorrectionInfo;
    invoke-interface {p5, v0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 34
    const/4 v3, 0x1

    .line 36
    .end local v0    # "ci":Landroid/view/inputmethod/CorrectionInfo;
    .end local v4    # "startPosition":I
    :cond_2
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    move v5, v3

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p3, :cond_5

    if-eqz p4, :cond_0

    .line 46
    :cond_5
    move v4, p2

    .line 47
    .restart local v4    # "startPosition":I
    sub-int/2addr v4, p3

    .line 48
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    invoke-direct {v0, v4, p1, p0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 49
    .restart local v0    # "ci":Landroid/view/inputmethod/CorrectionInfo;
    invoke-interface {p5, v0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 50
    invoke-interface {p5, p3, p4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 51
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v3, 0x1

    move v5, v3

    .line 53
    goto :goto_0
.end method

.method public static doAutoCorrectionByTrace(Ljava/lang/CharSequence;Landroid/view/inputmethod/InputConnection;)Z
    .locals 3
    .param p0, "candidate"    # Ljava/lang/CharSequence;
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "I"

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 115
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 116
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 119
    return v2

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
