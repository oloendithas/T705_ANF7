.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

.field final synthetic val$bgView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;->val$bgView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 282
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;->val$bgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;->val$bgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 284
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;->val$bgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 285
    return v2
.end method
