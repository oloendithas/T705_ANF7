.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;
.super Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPopupKeyboardActionListener"
.end annotation


# instance fields
.field private mDismissOnInput:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 1

    .prologue
    .line 3430
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 3431
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 3428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    .line 3432
    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)V
    .locals 1
    .param p2, "dismissOnInput"    # Z

    .prologue
    .line 3434
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 3435
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 3428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    .line 3436
    iput-boolean p2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    .line 3437
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 3441
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-nez v0, :cond_0

    const/16 v0, -0x7f

    if-ne p1, v0, :cond_1

    .line 3442
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 3444
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3445
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_3

    .line 3446
    const p1, 0xff1f

    .line 3451
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    .line 3452
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 3453
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    .line 3454
    return-void

    .line 3447
    :cond_3
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    .line 3448
    const p1, 0xff01

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 3466
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v0, :cond_0

    .line 3467
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 3469
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3458
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v0, :cond_0

    .line 3459
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 3461
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    .line 3462
    return-void
.end method
