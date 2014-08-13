.class public Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 12
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 13
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 18
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    .line 23
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onRelease(I)V

    .line 28
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public swipeDown()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeDown()V

    .line 38
    return-void
.end method

.method public swipeLeft()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeLeft()V

    .line 43
    return-void
.end method

.method public swipeRight()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeRight()V

    .line 48
    return-void
.end method

.method public swipeUp()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeUp()V

    .line 53
    return-void
.end method
