.class Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$1;
.super Ljava/lang/Object;
.source "CandidatePrevNextButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;->access$000(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 65
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 68
    :cond_0
    return-void
.end method
