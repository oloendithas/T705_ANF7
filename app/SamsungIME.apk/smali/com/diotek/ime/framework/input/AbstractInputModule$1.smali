.class Lcom/diotek/ime/framework/input/AbstractInputModule$1;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "AbstractInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/AbstractInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/AbstractInputModule;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v0

    .line 142
    .local v0, "hangulModule":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 144
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 145
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 151
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    const/4 v2, -0x1

    iput v2, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 153
    :cond_2
    return-void
.end method
