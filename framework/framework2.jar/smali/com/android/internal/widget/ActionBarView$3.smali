.class Lcom/android/internal/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$200(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # setter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/ActionBarView;->access$202(Lcom/android/internal/widget/ActionBarView;Z)Z

    .line 280
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$400(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$500(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 284
    :cond_34
    return-void
.end method
