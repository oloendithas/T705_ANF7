.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;
.super Ljava/lang/Object;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHoverListener()Landroid/view/View$OnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputMethod:I

.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;->inputMethod:I

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    const/4 v1, -0x1

    .line 401
    .local v1, "hoverbgId":I
    iget v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 403
    :try_start_0
    const-string v2, "floating_candidate_bg_hover"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 422
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v1, 0x7f020028

    .line 406
    goto :goto_0

    .line 409
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :try_start_1
    const-string v2, "candidate_bg_hover"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    .line 411
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v1, 0x7f020028

    goto :goto_0

    .line 416
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 419
    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBackgroundResourceId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
