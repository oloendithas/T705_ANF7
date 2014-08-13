.class Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "SwiftkeyPhonepadKoreanInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    .line 179
    .local v0, "hangulModule":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 181
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-boolean v1, v1, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->bSymbolMultitapKeyPressed:Z

    if-nez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    .line 194
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, -0x1

    iput v2, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 197
    :cond_2
    return-void

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-boolean v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 186
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestion()V

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 189
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 190
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0
.end method
