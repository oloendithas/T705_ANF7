.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 681
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 683
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3, v3}, Lcom/diotek/ime/framework/common/InputManager;->setSelectionBgOnCandidateList(IZ)V

    .line 686
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 687
    .local v0, "action":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    .line 704
    :cond_1
    :goto_0
    return v3

    .line 689
    :cond_2
    if-nez v0, :cond_3

    .line 690
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    .line 691
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0

    .line 692
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    .line 694
    .local v1, "view":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v1, :cond_4

    .line 695
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 696
    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindowLeftSide()V

    .line 701
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    .line 702
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0

    .line 697
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$300(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 698
    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindowRightSide()V

    goto :goto_1
.end method
