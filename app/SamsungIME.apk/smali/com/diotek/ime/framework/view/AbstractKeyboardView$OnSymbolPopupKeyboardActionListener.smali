.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;
.super Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSymbolPopupKeyboardActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    .prologue
    .line 9952
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Lcom/diotek/ime/framework/view/AbstractKeyboardView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    .param p2, "x1"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView$1;

    .prologue
    .line 9952
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;-><init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 9955
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 9956
    const/16 v0, -0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, -0xbe

    if-ne p1, v0, :cond_1

    .line 9957
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changeSymbolPopupPage()V
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    .line 9959
    :cond_1
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 9963
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    .line 9964
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 9968
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onRelease(I)V

    .line 9969
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 9973
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    .line 9974
    return-void
.end method
