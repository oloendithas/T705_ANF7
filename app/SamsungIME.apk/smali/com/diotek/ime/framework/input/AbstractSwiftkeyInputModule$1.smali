.class Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;
.super Landroid/os/Handler;
.source "AbstractSwiftkeyInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 49
    :sswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 53
    :sswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 54
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 58
    :sswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 59
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 63
    :sswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 67
    :sswitch_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->checkChineseSequence()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    goto :goto_1

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_3
        0x26 -> :sswitch_4
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
    .end sparse-switch
.end method
