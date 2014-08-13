.class Lcom/diotek/ime/implement/view/candidate/CandidateView$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f020030

    const v4, 0x7f02002c

    .line 157
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v2

    .line 158
    .local v2, "isCandidateExpanded":Z
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 159
    .local v1, "inputMethod":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 209
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 161
    :pswitch_0
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 162
    if-eqz v2, :cond_0

    .line 164
    :try_start_0
    const-string v3, "floating_candidate_button_bg_close_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 174
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :try_start_1
    const-string v3, "floating_candidate_button_bg_expand_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 183
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    if-eqz v2, :cond_2

    .line 185
    :try_start_2
    const-string v3, "candidate_button_bg_close_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 195
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :try_start_3
    const-string v3, "candidate_button_bg_expand_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 197
    :catch_3
    move-exception v0

    .line 198
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 206
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
