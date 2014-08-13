.class Lcom/diotek/ime/framework/view/TipsDialog$76;
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

.field final synthetic val$candidateTextView:Landroid/view/View;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 2852
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->val$keycode:I

    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->val$candidateTextView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 2859
    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->val$keycode:I

    const/16 v2, -0x75

    if-ne v1, v2, :cond_0

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1200()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2863
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->val$candidateTextView:Landroid/view/View;

    if-eqz v1, :cond_1

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1200()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2864
    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1200()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2870
    :goto_0
    return v0

    .line 2866
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$76;->val$keycode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1200()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2867
    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1200()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2870
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
