.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    .prologue
    .line 2645
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2648
    sget-boolean v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->ISRIGHTSWIPE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->ISLEFTSWIPE:Z

    if-eqz v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 2650
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 2651
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPairView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPairView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 2653
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPairView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 2658
    :cond_0
    :goto_0
    return-void

    .line 2656
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$9;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetSwipeFlag()V
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$000(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    goto :goto_0
.end method
