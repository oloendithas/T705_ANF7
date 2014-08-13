.class Lcom/diotek/ime/framework/view/TipsDialog$77;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V
    .locals 0

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2877
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    .line 2878
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2879
    .local v0, "action":I
    iget v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    const/16 v4, -0x75

    if-ne v3, v4, :cond_2

    .line 2880
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2881
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    .line 2893
    :cond_0
    :goto_0
    return v1

    .line 2882
    :cond_1
    if-nez v0, :cond_0

    .line 2883
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboardforMMkey()V

    .line 2884
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    goto :goto_0

    .line 2887
    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 2888
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    array-length v3, v3

    if-le v3, v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2889
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2893
    goto :goto_0
.end method
