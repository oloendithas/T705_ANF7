.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;
.super Ljava/lang/Object;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 339
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "XT9_DLM_ENABLE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v1, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->showXt9_9RemoveTermDialog(Ljava/lang/String;I)V

    .line 346
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z

    .line 349
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
